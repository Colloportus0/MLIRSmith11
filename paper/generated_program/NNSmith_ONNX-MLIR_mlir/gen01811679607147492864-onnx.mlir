module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_3(dense<7> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v6_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %14 = llvm.bitcast %13 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %20 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.insertvalue %40, %39[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.null : !llvm.ptr<i32>
    %56 = llvm.getelementptr %55[%50] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %57 = llvm.ptrtoint %56 : !llvm.ptr<i32> to i64
    %58 = llvm.mlir.constant(16 : index) : i64
    %59 = llvm.add %57, %58  : i64
    %60 = llvm.call @malloc(%59) : (i64) -> !llvm.ptr<i8>
    %61 = llvm.bitcast %60 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %62 = llvm.ptrtoint %61 : !llvm.ptr<i32> to i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.sub %58, %63  : i64
    %65 = llvm.add %62, %64  : i64
    %66 = llvm.urem %65, %58  : i64
    %67 = llvm.sub %65, %66  : i64
    %68 = llvm.inttoptr %67 : i64 to !llvm.ptr<i32>
    %69 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %70 = llvm.insertvalue %61, %69[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %68, %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.insertvalue %72, %71[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %50, %73[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %51, %74[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %52, %75[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %53, %76[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %51, %77[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %52, %78[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %53, %79[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %54, %80[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%82 : i64)
  ^bb1(%85: i64):  // 2 preds: ^bb0, ^bb11
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%87 : i64)
  ^bb3(%90: i64):  // 2 preds: ^bb2, ^bb10
    %91 = llvm.icmp "slt" %90, %88 : i64
    llvm.cond_br %91, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%92 : i64)
  ^bb5(%95: i64):  // 2 preds: ^bb4, ^bb9
    %96 = llvm.icmp "slt" %95, %93 : i64
    llvm.cond_br %96, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%97 : i64)
  ^bb7(%100: i64):  // 2 preds: ^bb6, ^bb8
    %101 = llvm.icmp "slt" %100, %98 : i64
    llvm.cond_br %101, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %102 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.add %85, %90  : i64
    %104 = llvm.add %103, %95  : i64
    %105 = llvm.add %104, %100  : i64
    %106 = llvm.getelementptr %102[%105] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %107 = llvm.load %106 : !llvm.ptr<i32>
    %108 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %109 = llvm.load %108 : !llvm.ptr<i32>
    %110 = llvm.icmp "slt" %107, %109 : i32
    %111 = llvm.select %110, %109, %107 : i1, i32
    %112 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %113 = llvm.load %112 : !llvm.ptr<i32>
    %114 = llvm.icmp "slt" %111, %113 : i32
    %115 = llvm.select %114, %111, %113 : i1, i32
    %116 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.add %85, %90  : i64
    %118 = llvm.add %117, %95  : i64
    %119 = llvm.add %118, %100  : i64
    %120 = llvm.getelementptr %116[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %115, %120 : !llvm.ptr<i32>
    %121 = llvm.add %100, %99  : i64
    llvm.br ^bb7(%121 : i64)
  ^bb9:  // pred: ^bb7
    %122 = llvm.add %95, %94  : i64
    llvm.br ^bb5(%122 : i64)
  ^bb10:  // pred: ^bb5
    %123 = llvm.add %90, %89  : i64
    llvm.br ^bb3(%123 : i64)
  ^bb11:  // pred: ^bb3
    %124 = llvm.add %85, %84  : i64
    llvm.br ^bb1(%124 : i64)
  ^bb12:  // pred: ^bb1
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.null : !llvm.ptr<i32>
    %131 = llvm.getelementptr %130[%125] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %132 = llvm.ptrtoint %131 : !llvm.ptr<i32> to i64
    %133 = llvm.mlir.constant(16 : index) : i64
    %134 = llvm.add %132, %133  : i64
    %135 = llvm.call @malloc(%134) : (i64) -> !llvm.ptr<i8>
    %136 = llvm.bitcast %135 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %137 = llvm.ptrtoint %136 : !llvm.ptr<i32> to i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.sub %133, %138  : i64
    %140 = llvm.add %137, %139  : i64
    %141 = llvm.urem %140, %133  : i64
    %142 = llvm.sub %140, %141  : i64
    %143 = llvm.inttoptr %142 : i64 to !llvm.ptr<i32>
    %144 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %145 = llvm.insertvalue %136, %144[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %143, %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.insertvalue %147, %146[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %125, %148[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %126, %149[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %127, %150[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %128, %151[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %126, %152[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %127, %153[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %128, %154[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %129, %155[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%157 : i64)
  ^bb13(%160: i64):  // 2 preds: ^bb12, ^bb23
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%162 : i64)
  ^bb15(%165: i64):  // 2 preds: ^bb14, ^bb22
    %166 = llvm.icmp "slt" %165, %163 : i64
    llvm.cond_br %166, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%167 : i64)
  ^bb17(%170: i64):  // 2 preds: ^bb16, ^bb21
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%172 : i64)
  ^bb19(%175: i64):  // 2 preds: ^bb18, ^bb20
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %177 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.add %160, %165  : i64
    %179 = llvm.add %178, %170  : i64
    %180 = llvm.add %179, %175  : i64
    %181 = llvm.getelementptr %177[%180] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %182 = llvm.load %181 : !llvm.ptr<i32>
    %183 = llvm.extractvalue %156[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.add %160, %165  : i64
    %185 = llvm.add %184, %170  : i64
    %186 = llvm.add %185, %175  : i64
    %187 = llvm.getelementptr %183[%186] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %182, %187 : !llvm.ptr<i32>
    %188 = llvm.add %175, %174  : i64
    llvm.br ^bb19(%188 : i64)
  ^bb21:  // pred: ^bb19
    %189 = llvm.add %170, %169  : i64
    llvm.br ^bb17(%189 : i64)
  ^bb22:  // pred: ^bb17
    %190 = llvm.add %165, %164  : i64
    llvm.br ^bb15(%190 : i64)
  ^bb23:  // pred: ^bb15
    %191 = llvm.add %160, %159  : i64
    llvm.br ^bb13(%191 : i64)
  ^bb24:  // pred: ^bb13
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%192 : i64)
  ^bb25(%195: i64):  // 2 preds: ^bb24, ^bb35
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%197 : i64)
  ^bb27(%200: i64):  // 2 preds: ^bb26, ^bb34
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%202 : i64)
  ^bb29(%205: i64):  // 2 preds: ^bb28, ^bb33
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%207 : i64)
  ^bb31(%210: i64):  // 2 preds: ^bb30, ^bb32
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.add %195, %212  : i64
    %214 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.add %195, %200  : i64
    %216 = llvm.add %215, %205  : i64
    %217 = llvm.add %216, %210  : i64
    %218 = llvm.getelementptr %214[%217] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %219 = llvm.load %218 : !llvm.ptr<i32>
    %220 = llvm.extractvalue %156[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.add %213, %200  : i64
    %222 = llvm.add %221, %205  : i64
    %223 = llvm.add %222, %210  : i64
    %224 = llvm.getelementptr %220[%223] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %219, %224 : !llvm.ptr<i32>
    %225 = llvm.add %210, %209  : i64
    llvm.br ^bb31(%225 : i64)
  ^bb33:  // pred: ^bb31
    %226 = llvm.add %205, %204  : i64
    llvm.br ^bb29(%226 : i64)
  ^bb34:  // pred: ^bb29
    %227 = llvm.add %200, %199  : i64
    llvm.br ^bb27(%227 : i64)
  ^bb35:  // pred: ^bb27
    %228 = llvm.add %195, %194  : i64
    llvm.br ^bb25(%228 : i64)
  ^bb36:  // pred: ^bb25
    %229 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %230 = llvm.extractvalue %156[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.extractvalue %156[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %230, %229[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %233 = llvm.insertvalue %231, %232[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.insertvalue %234, %233[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.insertvalue %236, %235[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.insertvalue %238, %237[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.insertvalue %240, %239[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.insertvalue %242, %241[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.insertvalue %244, %243[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.insertvalue %246, %245[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.null : !llvm.ptr<i32>
    %253 = llvm.getelementptr %252[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %254 = llvm.ptrtoint %253 : !llvm.ptr<i32> to i64
    %255 = llvm.mlir.constant(16 : index) : i64
    %256 = llvm.add %254, %255  : i64
    %257 = llvm.call @malloc(%256) : (i64) -> !llvm.ptr<i8>
    %258 = llvm.bitcast %257 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %259 = llvm.ptrtoint %258 : !llvm.ptr<i32> to i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.sub %255, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.urem %262, %255  : i64
    %264 = llvm.sub %262, %263  : i64
    %265 = llvm.inttoptr %264 : i64 to !llvm.ptr<i32>
    %266 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %267 = llvm.insertvalue %258, %266[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %268 = llvm.insertvalue %265, %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.insertvalue %269, %268[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %271 = llvm.insertvalue %248, %270[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %272 = llvm.insertvalue %249, %271[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %273 = llvm.insertvalue %250, %272[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %274 = llvm.insertvalue %249, %273[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %275 = llvm.insertvalue %250, %274[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %276 = llvm.insertvalue %251, %275[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.null : !llvm.ptr<i32>
    %279 = llvm.getelementptr %278[%277] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %280 = llvm.ptrtoint %279 : !llvm.ptr<i32> to i64
    %281 = llvm.alloca %280 x i32 : (i64) -> !llvm.ptr<i32>
    %282 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %283 = llvm.insertvalue %281, %282[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %284 = llvm.insertvalue %281, %283[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.insertvalue %285, %284[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%287 : i64)
  ^bb37(%290: i64):  // 2 preds: ^bb36, ^bb47
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%292 : i64)
  ^bb39(%295: i64):  // 2 preds: ^bb38, ^bb46
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%297 : i64)
  ^bb41(%300: i64):  // 2 preds: ^bb40, ^bb45
    %301 = llvm.icmp "slt" %300, %298 : i64
    llvm.cond_br %301, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %302 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %12, %302 : !llvm.ptr<i32>
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%303 : i64)
  ^bb43(%306: i64):  // 2 preds: ^bb42, ^bb44
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %308 = llvm.extractvalue %247[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %309 = llvm.add %290, %295  : i64
    %310 = llvm.add %309, %306  : i64
    %311 = llvm.getelementptr %308[%310] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %312 = llvm.load %311 : !llvm.ptr<i32>
    %313 = llvm.extractvalue %247[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %314 = llvm.add %290, %306  : i64
    %315 = llvm.add %314, %300  : i64
    %316 = llvm.getelementptr %313[%315] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %317 = llvm.load %316 : !llvm.ptr<i32>
    %318 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %319 = llvm.load %318 : !llvm.ptr<i32>
    %320 = llvm.mul %312, %317  : i32
    %321 = llvm.add %319, %320  : i32
    %322 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %321, %322 : !llvm.ptr<i32>
    %323 = llvm.add %306, %305  : i64
    llvm.br ^bb43(%323 : i64)
  ^bb45:  // pred: ^bb43
    %324 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %325 = llvm.load %324 : !llvm.ptr<i32>
    %326 = llvm.extractvalue %276[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %327 = llvm.add %290, %295  : i64
    %328 = llvm.add %327, %300  : i64
    %329 = llvm.getelementptr %326[%328] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %325, %329 : !llvm.ptr<i32>
    %330 = llvm.add %300, %299  : i64
    llvm.br ^bb41(%330 : i64)
  ^bb46:  // pred: ^bb41
    %331 = llvm.add %295, %294  : i64
    llvm.br ^bb39(%331 : i64)
  ^bb47:  // pred: ^bb39
    %332 = llvm.add %290, %289  : i64
    llvm.br ^bb37(%332 : i64)
  ^bb48:  // pred: ^bb37
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.null : !llvm.ptr<i32>
    %338 = llvm.getelementptr %337[%333] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %339 = llvm.ptrtoint %338 : !llvm.ptr<i32> to i64
    %340 = llvm.mlir.constant(16 : index) : i64
    %341 = llvm.add %339, %340  : i64
    %342 = llvm.call @malloc(%341) : (i64) -> !llvm.ptr<i8>
    %343 = llvm.bitcast %342 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %344 = llvm.ptrtoint %343 : !llvm.ptr<i32> to i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.sub %340, %345  : i64
    %347 = llvm.add %344, %346  : i64
    %348 = llvm.urem %347, %340  : i64
    %349 = llvm.sub %347, %348  : i64
    %350 = llvm.inttoptr %349 : i64 to !llvm.ptr<i32>
    %351 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %352 = llvm.insertvalue %343, %351[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %353 = llvm.insertvalue %350, %352[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.insertvalue %354, %353[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %356 = llvm.insertvalue %333, %355[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %357 = llvm.insertvalue %334, %356[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %358 = llvm.insertvalue %335, %357[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %359 = llvm.insertvalue %334, %358[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %360 = llvm.insertvalue %335, %359[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %361 = llvm.insertvalue %336, %360[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.null : !llvm.ptr<i32>
    %364 = llvm.getelementptr %363[%362] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %365 = llvm.ptrtoint %364 : !llvm.ptr<i32> to i64
    %366 = llvm.alloca %365 x i32 : (i64) -> !llvm.ptr<i32>
    %367 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %368 = llvm.insertvalue %366, %367[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %369 = llvm.insertvalue %366, %368[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.insertvalue %370, %369[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%372 : i64)
  ^bb49(%375: i64):  // 2 preds: ^bb48, ^bb59
    %376 = llvm.icmp "slt" %375, %373 : i64
    llvm.cond_br %376, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%377 : i64)
  ^bb51(%380: i64):  // 2 preds: ^bb50, ^bb58
    %381 = llvm.icmp "slt" %380, %378 : i64
    llvm.cond_br %381, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%382 : i64)
  ^bb53(%385: i64):  // 2 preds: ^bb52, ^bb57
    %386 = llvm.icmp "slt" %385, %383 : i64
    llvm.cond_br %386, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %387 = llvm.extractvalue %371[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %12, %387 : !llvm.ptr<i32>
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%388 : i64)
  ^bb55(%391: i64):  // 2 preds: ^bb54, ^bb56
    %392 = llvm.icmp "slt" %391, %389 : i64
    llvm.cond_br %392, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %393 = llvm.extractvalue %276[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %394 = llvm.add %375, %380  : i64
    %395 = llvm.add %394, %391  : i64
    %396 = llvm.getelementptr %393[%395] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %397 = llvm.load %396 : !llvm.ptr<i32>
    %398 = llvm.extractvalue %247[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %399 = llvm.add %375, %391  : i64
    %400 = llvm.add %399, %385  : i64
    %401 = llvm.getelementptr %398[%400] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %402 = llvm.load %401 : !llvm.ptr<i32>
    %403 = llvm.extractvalue %371[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %404 = llvm.load %403 : !llvm.ptr<i32>
    %405 = llvm.mul %397, %402  : i32
    %406 = llvm.add %404, %405  : i32
    %407 = llvm.extractvalue %371[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %406, %407 : !llvm.ptr<i32>
    %408 = llvm.add %391, %390  : i64
    llvm.br ^bb55(%408 : i64)
  ^bb57:  // pred: ^bb55
    %409 = llvm.extractvalue %371[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %410 = llvm.load %409 : !llvm.ptr<i32>
    %411 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %412 = llvm.add %375, %380  : i64
    %413 = llvm.add %412, %385  : i64
    %414 = llvm.getelementptr %411[%413] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %410, %414 : !llvm.ptr<i32>
    %415 = llvm.add %385, %384  : i64
    llvm.br ^bb53(%415 : i64)
  ^bb58:  // pred: ^bb53
    %416 = llvm.add %380, %379  : i64
    llvm.br ^bb51(%416 : i64)
  ^bb59:  // pred: ^bb51
    %417 = llvm.add %375, %374  : i64
    llvm.br ^bb49(%417 : i64)
  ^bb60:  // pred: ^bb49
    llvm.return %361 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v6_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(3 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(0 : i64) : i64
    %75 = llvm.getelementptr %48[%74] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %75 : !llvm.ptr<ptr<i8>>
    %76 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %76 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<67 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<67 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

