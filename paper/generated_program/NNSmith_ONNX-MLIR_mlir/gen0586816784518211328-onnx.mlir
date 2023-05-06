module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @llvm.memcpy.p0.p0.i64(!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_1(dense<[[[[4], [6]]]]> : tensor<1x1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<3> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %arg6, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg7, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg8, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.mlir.constant(2 : i64) : i64
    %11 = llvm.mlir.constant(0 : i32) : i32
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %14 = llvm.bitcast %13 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %20 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<2 x array<1 x i32>>>>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<1 x array<1 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.insertvalue %31, %30[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.insertvalue %33, %32[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.constant(2 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(2 : index) : i64
    %50 = llvm.mlir.null : !llvm.ptr<i32>
    %51 = llvm.getelementptr %50[%49] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %52 = llvm.ptrtoint %51 : !llvm.ptr<i32> to i64
    %53 = llvm.mlir.constant(16 : index) : i64
    %54 = llvm.add %52, %53  : i64
    %55 = llvm.call @malloc(%54) : (i64) -> !llvm.ptr<i8>
    %56 = llvm.bitcast %55 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %57 = llvm.ptrtoint %56 : !llvm.ptr<i32> to i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.sub %53, %58  : i64
    %60 = llvm.add %57, %59  : i64
    %61 = llvm.urem %60, %53  : i64
    %62 = llvm.sub %60, %61  : i64
    %63 = llvm.inttoptr %62 : i64 to !llvm.ptr<i32>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %65 = llvm.insertvalue %56, %64[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %43, %68[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %44, %69[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %45, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %46, %71[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %48, %72[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %45, %73[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %46, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %47, %75[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%77 : i64)
  ^bb1(%80: i64):  // 2 preds: ^bb0, ^bb11
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%82 : i64)
  ^bb3(%85: i64):  // 2 preds: ^bb2, ^bb10
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%87 : i64)
  ^bb5(%90: i64):  // 2 preds: ^bb4, ^bb9
    %91 = llvm.icmp "slt" %90, %88 : i64
    llvm.cond_br %91, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%92 : i64)
  ^bb7(%95: i64):  // 2 preds: ^bb6, ^bb8
    %96 = llvm.icmp "slt" %95, %93 : i64
    llvm.cond_br %96, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %97 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.mul %80, %98  : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mul %85, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.add %102, %90  : i64
    %104 = llvm.add %103, %95  : i64
    %105 = llvm.getelementptr %97[%104] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %106 = llvm.load %105 : !llvm.ptr<i32>
    %107 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %108 = llvm.load %107 : !llvm.ptr<i32>
    %109 = llvm.icmp "slt" %106, %108 : i32
    %110 = llvm.select %109, %106, %108 : i1, i32
    %111 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mul %80, %112  : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mul %85, %114  : i64
    %116 = llvm.add %113, %115  : i64
    %117 = llvm.add %116, %90  : i64
    %118 = llvm.add %117, %95  : i64
    %119 = llvm.getelementptr %111[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %110, %119 : !llvm.ptr<i32>
    %120 = llvm.add %95, %94  : i64
    llvm.br ^bb7(%120 : i64)
  ^bb9:  // pred: ^bb7
    %121 = llvm.add %90, %89  : i64
    llvm.br ^bb5(%121 : i64)
  ^bb10:  // pred: ^bb5
    %122 = llvm.add %85, %84  : i64
    llvm.br ^bb3(%122 : i64)
  ^bb11:  // pred: ^bb3
    %123 = llvm.add %80, %79  : i64
    llvm.br ^bb1(%123 : i64)
  ^bb12:  // pred: ^bb1
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(4 : index) : i64
    %129 = llvm.mlir.constant(8 : index) : i64
    %130 = llvm.mlir.null : !llvm.ptr<i1>
    %131 = llvm.getelementptr %130[%129] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %132 = llvm.ptrtoint %131 : !llvm.ptr<i1> to i64
    %133 = llvm.mlir.constant(16 : index) : i64
    %134 = llvm.add %132, %133  : i64
    %135 = llvm.call @malloc(%134) : (i64) -> !llvm.ptr<i8>
    %136 = llvm.bitcast %135 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %137 = llvm.ptrtoint %136 : !llvm.ptr<i1> to i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.sub %133, %138  : i64
    %140 = llvm.add %137, %139  : i64
    %141 = llvm.urem %140, %133  : i64
    %142 = llvm.sub %140, %141  : i64
    %143 = llvm.inttoptr %142 : i64 to !llvm.ptr<i1>
    %144 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %145 = llvm.insertvalue %136, %144[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %146 = llvm.insertvalue %143, %145[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.insertvalue %147, %146[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %149 = llvm.insertvalue %124, %148[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %150 = llvm.insertvalue %125, %149[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %151 = llvm.insertvalue %126, %150[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %152 = llvm.insertvalue %128, %151[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %153 = llvm.insertvalue %126, %152[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %154 = llvm.insertvalue %127, %153[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.mlir.constant(2 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%155 : i64)
  ^bb13(%158: i64):  // 2 preds: ^bb12, ^bb20
    %159 = llvm.icmp "slt" %158, %156 : i64
    llvm.cond_br %159, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(2 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%160 : i64)
  ^bb15(%163: i64):  // 2 preds: ^bb14, ^bb19
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%165 : i64)
  ^bb17(%168: i64):  // 2 preds: ^bb16, ^bb18
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %170 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.mlir.constant(4 : index) : i64
    %172 = llvm.mul %158, %171  : i64
    %173 = llvm.mlir.constant(2 : index) : i64
    %174 = llvm.mul %163, %173  : i64
    %175 = llvm.add %172, %174  : i64
    %176 = llvm.add %175, %168  : i64
    %177 = llvm.getelementptr %170[%176] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %178 = llvm.load %177 : !llvm.ptr<i32>
    %179 = llvm.icmp "ne" %178, %11 : i32
    %180 = llvm.extractvalue %154[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %181 = llvm.mlir.constant(4 : index) : i64
    %182 = llvm.mul %158, %181  : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mul %163, %183  : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.add %185, %168  : i64
    %187 = llvm.getelementptr %180[%186] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %179, %187 : !llvm.ptr<i1>
    %188 = llvm.add %168, %167  : i64
    llvm.br ^bb17(%188 : i64)
  ^bb19:  // pred: ^bb17
    %189 = llvm.add %163, %162  : i64
    llvm.br ^bb15(%189 : i64)
  ^bb20:  // pred: ^bb15
    %190 = llvm.add %158, %157  : i64
    llvm.br ^bb13(%190 : i64)
  ^bb21:  // pred: ^bb13
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.constant(2 : index) : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mlir.constant(8 : index) : i64
    %198 = llvm.mlir.constant(8 : index) : i64
    %199 = llvm.mlir.null : !llvm.ptr<i32>
    %200 = llvm.getelementptr %199[%198] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %201 = llvm.ptrtoint %200 : !llvm.ptr<i32> to i64
    %202 = llvm.mlir.constant(16 : index) : i64
    %203 = llvm.add %201, %202  : i64
    %204 = llvm.call @malloc(%203) : (i64) -> !llvm.ptr<i8>
    %205 = llvm.bitcast %204 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %206 = llvm.ptrtoint %205 : !llvm.ptr<i32> to i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.sub %202, %207  : i64
    %209 = llvm.add %206, %208  : i64
    %210 = llvm.urem %209, %202  : i64
    %211 = llvm.sub %209, %210  : i64
    %212 = llvm.inttoptr %211 : i64 to !llvm.ptr<i32>
    %213 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %214 = llvm.insertvalue %205, %213[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %212, %214[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.insertvalue %216, %215[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %191, %217[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.insertvalue %192, %218[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %193, %219[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %194, %220[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.insertvalue %197, %221[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %196, %222[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.insertvalue %194, %223[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %195, %224[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%226 : i64)
  ^bb22(%229: i64):  // 2 preds: ^bb21, ^bb32
    %230 = llvm.icmp "slt" %229, %227 : i64
    llvm.cond_br %230, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(2 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%231 : i64)
  ^bb24(%234: i64):  // 2 preds: ^bb23, ^bb31
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(2 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%236 : i64)
  ^bb26(%239: i64):  // 2 preds: ^bb25, ^bb30
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%241 : i64)
  ^bb28(%244: i64):  // 2 preds: ^bb27, ^bb29
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %246 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %247 = llvm.mlir.constant(4 : index) : i64
    %248 = llvm.mul %234, %247  : i64
    %249 = llvm.mlir.constant(2 : index) : i64
    %250 = llvm.mul %239, %249  : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.add %251, %244  : i64
    %253 = llvm.getelementptr %246[%252] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %254 = llvm.load %253 : !llvm.ptr<i32>
    %255 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.mlir.constant(2 : index) : i64
    %257 = llvm.mul %229, %256  : i64
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mul %12, %258  : i64
    %260 = llvm.add %257, %259  : i64
    %261 = llvm.add %260, %239  : i64
    %262 = llvm.add %261, %12  : i64
    %263 = llvm.getelementptr %255[%262] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %264 = llvm.load %263 : !llvm.ptr<i32>
    %265 = llvm.mul %254, %264  : i32
    %266 = llvm.extractvalue %225[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.mlir.constant(8 : index) : i64
    %268 = llvm.mul %229, %267  : i64
    %269 = llvm.mlir.constant(4 : index) : i64
    %270 = llvm.mul %234, %269  : i64
    %271 = llvm.add %268, %270  : i64
    %272 = llvm.mlir.constant(2 : index) : i64
    %273 = llvm.mul %239, %272  : i64
    %274 = llvm.add %271, %273  : i64
    %275 = llvm.add %274, %244  : i64
    %276 = llvm.getelementptr %266[%275] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %265, %276 : !llvm.ptr<i32>
    %277 = llvm.add %244, %243  : i64
    llvm.br ^bb28(%277 : i64)
  ^bb30:  // pred: ^bb28
    %278 = llvm.add %239, %238  : i64
    llvm.br ^bb26(%278 : i64)
  ^bb31:  // pred: ^bb26
    %279 = llvm.add %234, %233  : i64
    llvm.br ^bb24(%279 : i64)
  ^bb32:  // pred: ^bb24
    %280 = llvm.add %229, %228  : i64
    llvm.br ^bb22(%280 : i64)
  ^bb33:  // pred: ^bb22
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.constant(4 : index) : i64
    %287 = llvm.mlir.constant(8 : index) : i64
    %288 = llvm.mlir.constant(8 : index) : i64
    %289 = llvm.mlir.null : !llvm.ptr<i32>
    %290 = llvm.getelementptr %289[%288] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %291 = llvm.ptrtoint %290 : !llvm.ptr<i32> to i64
    %292 = llvm.mlir.constant(16 : index) : i64
    %293 = llvm.add %291, %292  : i64
    %294 = llvm.call @malloc(%293) : (i64) -> !llvm.ptr<i8>
    %295 = llvm.bitcast %294 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %296 = llvm.ptrtoint %295 : !llvm.ptr<i32> to i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.sub %292, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.urem %299, %292  : i64
    %301 = llvm.sub %299, %300  : i64
    %302 = llvm.inttoptr %301 : i64 to !llvm.ptr<i32>
    %303 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %304 = llvm.insertvalue %295, %303[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %302, %304[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.insertvalue %306, %305[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %281, %307[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %282, %308[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.insertvalue %283, %309[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %284, %310[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %287, %311[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %286, %312[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %284, %313[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %285, %314[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%316 : i64)
  ^bb34(%319: i64):  // 2 preds: ^bb33, ^bb44
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%321 : i64)
  ^bb36(%324: i64):  // 2 preds: ^bb35, ^bb43
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.mlir.constant(2 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%326 : i64)
  ^bb38(%329: i64):  // 2 preds: ^bb37, ^bb42
    %330 = llvm.icmp "slt" %329, %327 : i64
    llvm.cond_br %330, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %331 = llvm.mlir.constant(0 : index) : i64
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%331 : i64)
  ^bb40(%334: i64):  // 2 preds: ^bb39, ^bb41
    %335 = llvm.icmp "slt" %334, %332 : i64
    llvm.cond_br %335, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %336 = llvm.extractvalue %225[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.mlir.constant(8 : index) : i64
    %338 = llvm.mul %319, %337  : i64
    %339 = llvm.mlir.constant(4 : index) : i64
    %340 = llvm.mul %324, %339  : i64
    %341 = llvm.add %338, %340  : i64
    %342 = llvm.mlir.constant(2 : index) : i64
    %343 = llvm.mul %329, %342  : i64
    %344 = llvm.add %341, %343  : i64
    %345 = llvm.add %344, %334  : i64
    %346 = llvm.getelementptr %336[%345] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %347 = llvm.load %346 : !llvm.ptr<i32>
    %348 = llvm.mlir.constant(false) : i1
    %349 = "llvm.intr.abs"(%347, %348) : (i32, i1) -> i32
    %350 = llvm.extractvalue %315[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.mlir.constant(8 : index) : i64
    %352 = llvm.mul %319, %351  : i64
    %353 = llvm.mlir.constant(4 : index) : i64
    %354 = llvm.mul %324, %353  : i64
    %355 = llvm.add %352, %354  : i64
    %356 = llvm.mlir.constant(2 : index) : i64
    %357 = llvm.mul %329, %356  : i64
    %358 = llvm.add %355, %357  : i64
    %359 = llvm.add %358, %334  : i64
    %360 = llvm.getelementptr %350[%359] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %349, %360 : !llvm.ptr<i32>
    %361 = llvm.add %334, %333  : i64
    llvm.br ^bb40(%361 : i64)
  ^bb42:  // pred: ^bb40
    %362 = llvm.add %329, %328  : i64
    llvm.br ^bb38(%362 : i64)
  ^bb43:  // pred: ^bb38
    %363 = llvm.add %324, %323  : i64
    llvm.br ^bb36(%363 : i64)
  ^bb44:  // pred: ^bb36
    %364 = llvm.add %319, %318  : i64
    llvm.br ^bb34(%364 : i64)
  ^bb45:  // pred: ^bb34
    %365 = llvm.mlir.constant(2 : index) : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mlir.constant(4 : index) : i64
    %372 = llvm.mlir.constant(8 : index) : i64
    %373 = llvm.mlir.null : !llvm.ptr<i32>
    %374 = llvm.getelementptr %373[%372] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %375 = llvm.ptrtoint %374 : !llvm.ptr<i32> to i64
    %376 = llvm.mlir.constant(16 : index) : i64
    %377 = llvm.add %375, %376  : i64
    %378 = llvm.call @malloc(%377) : (i64) -> !llvm.ptr<i8>
    %379 = llvm.bitcast %378 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %380 = llvm.ptrtoint %379 : !llvm.ptr<i32> to i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.sub %376, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.urem %383, %376  : i64
    %385 = llvm.sub %383, %384  : i64
    %386 = llvm.inttoptr %385 : i64 to !llvm.ptr<i32>
    %387 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %388 = llvm.insertvalue %379, %387[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.insertvalue %386, %388[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.insertvalue %390, %389[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %365, %391[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %366, %392[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %367, %393[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %368, %394[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %371, %395[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %370, %396[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %368, %397[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %369, %398[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%400 : i64)
  ^bb46(%403: i64):  // 2 preds: ^bb45, ^bb53
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb47, ^bb54
  ^bb47:  // pred: ^bb46
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%405 : i64)
  ^bb48(%408: i64):  // 2 preds: ^bb47, ^bb52
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb49, ^bb53
  ^bb49:  // pred: ^bb48
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%410 : i64)
  ^bb50(%413: i64):  // 2 preds: ^bb49, ^bb51
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %415 = llvm.mlir.constant(8 : index) : i64
    %416 = llvm.mul %403, %415  : i64
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mul %413, %417  : i64
    %419 = llvm.add %416, %418  : i64
    %420 = llvm.mlir.constant(4 : index) : i64
    %421 = llvm.mul %408, %420  : i64
    %422 = llvm.add %419, %421  : i64
    %423 = llvm.mlir.constant(2 : index) : i64
    %424 = llvm.mul %403, %423  : i64
    %425 = llvm.mlir.constant(4 : index) : i64
    %426 = llvm.mul %413, %425  : i64
    %427 = llvm.add %424, %426  : i64
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mul %408, %428  : i64
    %430 = llvm.add %427, %429  : i64
    %431 = llvm.mlir.constant(4 : i64) : i64
    %432 = llvm.extractvalue %399[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.ptrtoint %432 : !llvm.ptr<i32> to i64
    %434 = llvm.bitcast %430 : i64 to i64
    %435 = llvm.mul %434, %431  : i64
    %436 = llvm.add %433, %435  : i64
    %437 = llvm.inttoptr %436 : i64 to !llvm.ptr<i32>
    %438 = llvm.bitcast %437 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %439 = llvm.extractvalue %315[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.ptrtoint %439 : !llvm.ptr<i32> to i64
    %441 = llvm.bitcast %422 : i64 to i64
    %442 = llvm.mul %441, %431  : i64
    %443 = llvm.add %440, %442  : i64
    %444 = llvm.inttoptr %443 : i64 to !llvm.ptr<i32>
    %445 = llvm.bitcast %444 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %446 = llvm.mul %10, %431  : i64
    %447 = llvm.sext %446 : i64 to i64
    %448 = llvm.mlir.constant(false) : i1
    llvm.call @llvm.memcpy.p0.p0.i64(%438, %445, %447, %448) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %449 = llvm.add %413, %412  : i64
    llvm.br ^bb50(%449 : i64)
  ^bb52:  // pred: ^bb50
    %450 = llvm.add %408, %407  : i64
    llvm.br ^bb48(%450 : i64)
  ^bb53:  // pred: ^bb48
    %451 = llvm.add %403, %402  : i64
    llvm.br ^bb46(%451 : i64)
  ^bb54:  // pred: ^bb46
    %452 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %453 = llvm.insertvalue %154, %452[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %454 = llvm.insertvalue %399, %453[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %454 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %10, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %36, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %37 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %38 = llvm.extractvalue %37[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %39 = llvm.extractvalue %37[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %40 = llvm.mlir.constant(2 : i64) : i64
    %41 = llvm.mlir.constant(16 : i64) : i64
    %42 = llvm.call @malloc(%41) : (i64) -> !llvm.ptr<i8>
    %43 = llvm.bitcast %42 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %44 = llvm.mlir.constant(3 : i64) : i64
    %45 = llvm.call @omTensorCreateUntyped(%44) : (i64) -> !llvm.ptr<i8>
    %46 = llvm.mlir.constant(1 : i64) : i64
    %47 = llvm.extractvalue %38[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %48 = llvm.bitcast %47 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %49 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.bitcast %49 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%45, %46, %48, %50) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %51 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%45, %51) : (!llvm.ptr<i8>, i64) -> ()
    %52 = llvm.call @omTensorGetShape(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %53 = llvm.call @omTensorGetStrides(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %54 = llvm.mlir.constant(0 : i64) : i64
    %55 = llvm.extractvalue %38[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.getelementptr %52[%54] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %55, %56 : !llvm.ptr<i64>
    %57 = llvm.extractvalue %38[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.getelementptr %53[%54] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %57, %58 : !llvm.ptr<i64>
    %59 = llvm.mlir.constant(1 : i64) : i64
    %60 = llvm.extractvalue %38[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.getelementptr %52[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %38[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %53[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(2 : i64) : i64
    %65 = llvm.extractvalue %38[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %52[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %38[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %53[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(0 : i64) : i64
    %70 = llvm.getelementptr %43[%69] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %45, %70 : !llvm.ptr<ptr<i8>>
    %71 = llvm.mlir.constant(4 : i64) : i64
    %72 = llvm.call @omTensorCreateUntyped(%71) : (i64) -> !llvm.ptr<i8>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.bitcast %74 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %76 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.bitcast %76 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%72, %73, %75, %77) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %78 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%72, %78) : (!llvm.ptr<i8>, i64) -> ()
    %79 = llvm.call @omTensorGetShape(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %80 = llvm.call @omTensorGetStrides(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.extractvalue %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %79[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %39[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %80[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %39[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %79[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.extractvalue %39[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %80[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.mlir.constant(2 : i64) : i64
    %92 = llvm.extractvalue %39[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %79[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.extractvalue %39[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %80[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.mlir.constant(3 : i64) : i64
    %97 = llvm.extractvalue %39[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %79[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.extractvalue %39[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %80[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.mlir.constant(1 : i64) : i64
    %102 = llvm.getelementptr %43[%101] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %72, %102 : !llvm.ptr<ptr<i8>>
    %103 = llvm.call @omTensorListCreate(%43, %40, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %103 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<68 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<68 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<136 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<136 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

