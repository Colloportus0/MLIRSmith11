module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v5_0", "v1_0"]} {
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
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.constant(0 : i64) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(4 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.null : !llvm.ptr<i32>
    %51 = llvm.getelementptr %50[%45] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %69 = llvm.insertvalue %45, %68[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %46, %69[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %47, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %48, %71[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %46, %72[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %47, %73[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %48, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %49, %75[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %88 = llvm.mlir.constant(1 : index) : i64
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
    %97 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.add %80, %85  : i64
    %99 = llvm.add %98, %90  : i64
    %100 = llvm.add %99, %95  : i64
    %101 = llvm.getelementptr %97[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.load %101 : !llvm.ptr<i32>
    %103 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.add %80, %85  : i64
    %105 = llvm.add %104, %90  : i64
    %106 = llvm.add %105, %95  : i64
    %107 = llvm.getelementptr %103[%106] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %108 = llvm.load %107 : !llvm.ptr<i32>
    %109 = llvm.icmp "sgt" %102, %108 : i32
    %110 = llvm.select %109, %102, %108 : i1, i32
    %111 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.add %80, %85  : i64
    %113 = llvm.add %112, %90  : i64
    %114 = llvm.add %113, %95  : i64
    %115 = llvm.getelementptr %111[%114] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %110, %115 : !llvm.ptr<i32>
    %116 = llvm.add %95, %94  : i64
    llvm.br ^bb7(%116 : i64)
  ^bb9:  // pred: ^bb7
    %117 = llvm.add %90, %89  : i64
    llvm.br ^bb5(%117 : i64)
  ^bb10:  // pred: ^bb5
    %118 = llvm.add %85, %84  : i64
    llvm.br ^bb3(%118 : i64)
  ^bb11:  // pred: ^bb3
    %119 = llvm.add %80, %79  : i64
    llvm.br ^bb1(%119 : i64)
  ^bb12:  // pred: ^bb1
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.null : !llvm.ptr<i64>
    %126 = llvm.getelementptr %125[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %127 = llvm.ptrtoint %126 : !llvm.ptr<i64> to i64
    %128 = llvm.mlir.constant(16 : index) : i64
    %129 = llvm.add %127, %128  : i64
    %130 = llvm.call @malloc(%129) : (i64) -> !llvm.ptr<i8>
    %131 = llvm.bitcast %130 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %132 = llvm.ptrtoint %131 : !llvm.ptr<i64> to i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.sub %128, %133  : i64
    %135 = llvm.add %132, %134  : i64
    %136 = llvm.urem %135, %128  : i64
    %137 = llvm.sub %135, %136  : i64
    %138 = llvm.inttoptr %137 : i64 to !llvm.ptr<i64>
    %139 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %140 = llvm.insertvalue %131, %139[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %138, %140[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.insertvalue %142, %141[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %120, %143[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %121, %144[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %122, %145[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %123, %146[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %121, %147[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %122, %148[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %123, %149[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %124, %150[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%152 : i64)
  ^bb13(%155: i64):  // 2 preds: ^bb12, ^bb23
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%157 : i64)
  ^bb15(%160: i64):  // 2 preds: ^bb14, ^bb22
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%162 : i64)
  ^bb17(%165: i64):  // 2 preds: ^bb16, ^bb21
    %166 = llvm.icmp "slt" %165, %163 : i64
    llvm.cond_br %166, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%167 : i64)
  ^bb19(%170: i64):  // 2 preds: ^bb18, ^bb20
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %172 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.add %155, %160  : i64
    %174 = llvm.add %173, %165  : i64
    %175 = llvm.add %174, %170  : i64
    %176 = llvm.getelementptr %172[%175] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %177 = llvm.load %176 : !llvm.ptr<i32>
    %178 = llvm.sext %177 : i32 to i64
    %179 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.add %155, %160  : i64
    %181 = llvm.add %180, %165  : i64
    %182 = llvm.add %181, %170  : i64
    %183 = llvm.getelementptr %179[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %183 : !llvm.ptr<i64>
    %184 = llvm.add %170, %169  : i64
    llvm.br ^bb19(%184 : i64)
  ^bb21:  // pred: ^bb19
    %185 = llvm.add %165, %164  : i64
    llvm.br ^bb17(%185 : i64)
  ^bb22:  // pred: ^bb17
    %186 = llvm.add %160, %159  : i64
    llvm.br ^bb15(%186 : i64)
  ^bb23:  // pred: ^bb15
    %187 = llvm.add %155, %154  : i64
    llvm.br ^bb13(%187 : i64)
  ^bb24:  // pred: ^bb13
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.null : !llvm.ptr<i64>
    %193 = llvm.getelementptr %192[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %194 = llvm.ptrtoint %193 : !llvm.ptr<i64> to i64
    %195 = llvm.mlir.constant(16 : index) : i64
    %196 = llvm.add %194, %195  : i64
    %197 = llvm.call @malloc(%196) : (i64) -> !llvm.ptr<i8>
    %198 = llvm.bitcast %197 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<i64> to i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.sub %195, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.urem %202, %195  : i64
    %204 = llvm.sub %202, %203  : i64
    %205 = llvm.inttoptr %204 : i64 to !llvm.ptr<i64>
    %206 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %207 = llvm.insertvalue %198, %206[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %208 = llvm.insertvalue %205, %207[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.insertvalue %209, %208[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %211 = llvm.insertvalue %188, %210[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %212 = llvm.insertvalue %189, %211[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %213 = llvm.insertvalue %190, %212[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %214 = llvm.insertvalue %189, %213[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %215 = llvm.insertvalue %190, %214[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %216 = llvm.insertvalue %191, %215[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%217 : i64)
  ^bb25(%220: i64):  // 2 preds: ^bb24, ^bb32
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%222 : i64)
  ^bb27(%225: i64):  // 2 preds: ^bb26, ^bb31
    %226 = llvm.icmp "slt" %225, %223 : i64
    llvm.cond_br %226, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%227 : i64)
  ^bb29(%230: i64):  // 2 preds: ^bb28, ^bb30
    %231 = llvm.icmp "slt" %230, %228 : i64
    llvm.cond_br %231, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %232 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %233 = llvm.add %220, %225  : i64
    %234 = llvm.add %233, %230  : i64
    %235 = llvm.getelementptr %232[%234] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %235 : !llvm.ptr<i64>
    %236 = llvm.add %230, %229  : i64
    llvm.br ^bb29(%236 : i64)
  ^bb31:  // pred: ^bb29
    %237 = llvm.add %225, %224  : i64
    llvm.br ^bb27(%237 : i64)
  ^bb32:  // pred: ^bb27
    %238 = llvm.add %220, %219  : i64
    llvm.br ^bb25(%238 : i64)
  ^bb33:  // pred: ^bb25
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%239 : i64)
  ^bb34(%242: i64):  // 2 preds: ^bb33, ^bb44
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%244 : i64)
  ^bb36(%247: i64):  // 2 preds: ^bb35, ^bb43
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%249 : i64)
  ^bb38(%252: i64):  // 2 preds: ^bb37, ^bb42
    %253 = llvm.icmp "slt" %252, %250 : i64
    llvm.cond_br %253, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%254 : i64)
  ^bb40(%257: i64):  // 2 preds: ^bb39, ^bb41
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %259 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.add %242, %247  : i64
    %261 = llvm.add %260, %252  : i64
    %262 = llvm.add %261, %257  : i64
    %263 = llvm.getelementptr %259[%262] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %264 = llvm.load %263 : !llvm.ptr<i64>
    %265 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %266 = llvm.add %242, %247  : i64
    %267 = llvm.add %266, %257  : i64
    %268 = llvm.getelementptr %265[%267] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %269 = llvm.load %268 : !llvm.ptr<i64>
    %270 = llvm.add %269, %264  : i64
    %271 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %272 = llvm.add %242, %247  : i64
    %273 = llvm.add %272, %257  : i64
    %274 = llvm.getelementptr %271[%273] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %270, %274 : !llvm.ptr<i64>
    %275 = llvm.add %257, %256  : i64
    llvm.br ^bb40(%275 : i64)
  ^bb42:  // pred: ^bb40
    %276 = llvm.add %252, %251  : i64
    llvm.br ^bb38(%276 : i64)
  ^bb43:  // pred: ^bb38
    %277 = llvm.add %247, %246  : i64
    llvm.br ^bb36(%277 : i64)
  ^bb44:  // pred: ^bb36
    %278 = llvm.add %242, %241  : i64
    llvm.br ^bb34(%278 : i64)
  ^bb45:  // pred: ^bb34
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(2 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mlir.null : !llvm.ptr<i64>
    %286 = llvm.getelementptr %285[%284] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %287 = llvm.ptrtoint %286 : !llvm.ptr<i64> to i64
    %288 = llvm.mlir.constant(16 : index) : i64
    %289 = llvm.add %287, %288  : i64
    %290 = llvm.call @malloc(%289) : (i64) -> !llvm.ptr<i8>
    %291 = llvm.bitcast %290 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %292 = llvm.ptrtoint %291 : !llvm.ptr<i64> to i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.sub %288, %293  : i64
    %295 = llvm.add %292, %294  : i64
    %296 = llvm.urem %295, %288  : i64
    %297 = llvm.sub %295, %296  : i64
    %298 = llvm.inttoptr %297 : i64 to !llvm.ptr<i64>
    %299 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %300 = llvm.insertvalue %291, %299[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %301 = llvm.insertvalue %298, %300[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %302 = llvm.mlir.constant(0 : index) : i64
    %303 = llvm.insertvalue %302, %301[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %304 = llvm.insertvalue %279, %303[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %305 = llvm.insertvalue %280, %304[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %306 = llvm.insertvalue %281, %305[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %307 = llvm.insertvalue %283, %306[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %308 = llvm.insertvalue %281, %307[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %309 = llvm.insertvalue %282, %308[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%310 : i64)
  ^bb46(%313: i64):  // 2 preds: ^bb45, ^bb53
    %314 = llvm.icmp "slt" %313, %311 : i64
    llvm.cond_br %314, ^bb47, ^bb54
  ^bb47:  // pred: ^bb46
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%315 : i64)
  ^bb48(%318: i64):  // 2 preds: ^bb47, ^bb52
    %319 = llvm.icmp "slt" %318, %316 : i64
    llvm.cond_br %319, ^bb49, ^bb53
  ^bb49:  // pred: ^bb48
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%320 : i64)
  ^bb50(%323: i64):  // 2 preds: ^bb49, ^bb51
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %325 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %326 = llvm.add %313, %318  : i64
    %327 = llvm.add %326, %323  : i64
    %328 = llvm.getelementptr %325[%327] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %329 = llvm.load %328 : !llvm.ptr<i64>
    %330 = llvm.extractvalue %309[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mul %313, %331  : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mul %318, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.add %335, %323  : i64
    %337 = llvm.getelementptr %330[%336] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %329, %337 : !llvm.ptr<i64>
    %338 = llvm.add %323, %322  : i64
    llvm.br ^bb50(%338 : i64)
  ^bb52:  // pred: ^bb50
    %339 = llvm.add %318, %317  : i64
    llvm.br ^bb48(%339 : i64)
  ^bb53:  // pred: ^bb48
    %340 = llvm.add %313, %312  : i64
    llvm.br ^bb46(%340 : i64)
  ^bb54:  // pred: ^bb46
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%341 : i64)
  ^bb55(%344: i64):  // 2 preds: ^bb54, ^bb62
    %345 = llvm.icmp "slt" %344, %342 : i64
    llvm.cond_br %345, ^bb56, ^bb63
  ^bb56:  // pred: ^bb55
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%346 : i64)
  ^bb57(%349: i64):  // 2 preds: ^bb56, ^bb61
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb58, ^bb62
  ^bb58:  // pred: ^bb57
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%351 : i64)
  ^bb59(%354: i64):  // 2 preds: ^bb58, ^bb60
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb60, ^bb61
  ^bb60:  // pred: ^bb59
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %359 = llvm.add %344, %349  : i64
    %360 = llvm.add %359, %354  : i64
    %361 = llvm.getelementptr %358[%360] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %362 = llvm.load %361 : !llvm.ptr<i64>
    %363 = llvm.extractvalue %309[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %364 = llvm.mlir.constant(2 : index) : i64
    %365 = llvm.mul %344, %364  : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mul %349, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.add %368, %357  : i64
    %370 = llvm.getelementptr %363[%369] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %362, %370 : !llvm.ptr<i64>
    %371 = llvm.add %354, %353  : i64
    llvm.br ^bb59(%371 : i64)
  ^bb61:  // pred: ^bb59
    %372 = llvm.add %349, %348  : i64
    llvm.br ^bb57(%372 : i64)
  ^bb62:  // pred: ^bb57
    %373 = llvm.add %344, %343  : i64
    llvm.br ^bb55(%373 : i64)
  ^bb63:  // pred: ^bb55
    %374 = llvm.mlir.constant(4 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.null : !llvm.ptr<i64>
    %377 = llvm.getelementptr %376[%374] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %378 = llvm.ptrtoint %377 : !llvm.ptr<i64> to i64
    %379 = llvm.mlir.constant(16 : index) : i64
    %380 = llvm.add %378, %379  : i64
    %381 = llvm.call @malloc(%380) : (i64) -> !llvm.ptr<i8>
    %382 = llvm.bitcast %381 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %383 = llvm.ptrtoint %382 : !llvm.ptr<i64> to i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.sub %379, %384  : i64
    %386 = llvm.add %383, %385  : i64
    %387 = llvm.urem %386, %379  : i64
    %388 = llvm.sub %386, %387  : i64
    %389 = llvm.inttoptr %388 : i64 to !llvm.ptr<i64>
    %390 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %391 = llvm.insertvalue %382, %390[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.insertvalue %389, %391[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.insertvalue %393, %392[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %395 = llvm.insertvalue %374, %394[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.insertvalue %375, %395[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(4 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%397 : i64)
  ^bb64(%400: i64):  // 2 preds: ^bb63, ^bb65
    %401 = llvm.icmp "slt" %400, %398 : i64
    llvm.cond_br %401, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %402 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %403 = llvm.getelementptr %402[%400] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %403 : !llvm.ptr<i64>
    %404 = llvm.add %400, %399  : i64
    llvm.br ^bb64(%404 : i64)
  ^bb66:  // pred: ^bb64
    %405 = llvm.mlir.constant(4 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.null : !llvm.ptr<i64>
    %408 = llvm.getelementptr %407[%405] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %409 = llvm.ptrtoint %408 : !llvm.ptr<i64> to i64
    %410 = llvm.mlir.constant(16 : index) : i64
    %411 = llvm.add %409, %410  : i64
    %412 = llvm.call @malloc(%411) : (i64) -> !llvm.ptr<i8>
    %413 = llvm.bitcast %412 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %414 = llvm.ptrtoint %413 : !llvm.ptr<i64> to i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.sub %410, %415  : i64
    %417 = llvm.add %414, %416  : i64
    %418 = llvm.urem %417, %410  : i64
    %419 = llvm.sub %417, %418  : i64
    %420 = llvm.inttoptr %419 : i64 to !llvm.ptr<i64>
    %421 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %422 = llvm.insertvalue %413, %421[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.insertvalue %420, %422[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.insertvalue %424, %423[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.insertvalue %405, %425[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %427 = llvm.insertvalue %406, %426[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%428 : i64)
  ^bb67(%431: i64):  // 2 preds: ^bb66, ^bb68
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %433 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %434 = llvm.getelementptr %433[%431] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %435 = llvm.load %434 : !llvm.ptr<i64>
    %436 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %437 = llvm.load %436 : !llvm.ptr<i64>
    %438 = llvm.mul %435, %437  : i64
    %439 = llvm.extractvalue %427[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %440 = llvm.getelementptr %439[%431] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %438, %440 : !llvm.ptr<i64>
    %441 = llvm.add %431, %430  : i64
    llvm.br ^bb67(%441 : i64)
  ^bb69:  // pred: ^bb67
    %442 = llvm.mlir.constant(4 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.mlir.null : !llvm.ptr<i1>
    %445 = llvm.getelementptr %444[%442] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %446 = llvm.ptrtoint %445 : !llvm.ptr<i1> to i64
    %447 = llvm.mlir.constant(16 : index) : i64
    %448 = llvm.add %446, %447  : i64
    %449 = llvm.call @malloc(%448) : (i64) -> !llvm.ptr<i8>
    %450 = llvm.bitcast %449 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %451 = llvm.ptrtoint %450 : !llvm.ptr<i1> to i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.sub %447, %452  : i64
    %454 = llvm.add %451, %453  : i64
    %455 = llvm.urem %454, %447  : i64
    %456 = llvm.sub %454, %455  : i64
    %457 = llvm.inttoptr %456 : i64 to !llvm.ptr<i1>
    %458 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %459 = llvm.insertvalue %450, %458[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %460 = llvm.insertvalue %457, %459[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.insertvalue %461, %460[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %463 = llvm.insertvalue %442, %462[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.insertvalue %443, %463[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(4 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%465 : i64)
  ^bb70(%468: i64):  // 2 preds: ^bb69, ^bb71
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %470 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %471 = llvm.getelementptr %470[%468] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %472 = llvm.load %471 : !llvm.ptr<i64>
    %473 = llvm.extractvalue %427[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %474 = llvm.getelementptr %473[%468] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %475 = llvm.load %474 : !llvm.ptr<i64>
    %476 = llvm.icmp "eq" %472, %475 : i64
    %477 = llvm.extractvalue %464[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.getelementptr %477[%468] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %476, %478 : !llvm.ptr<i1>
    %479 = llvm.add %468, %467  : i64
    llvm.br ^bb70(%479 : i64)
  ^bb72:  // pred: ^bb70
    %480 = llvm.mlir.constant(4 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    %482 = llvm.mlir.null : !llvm.ptr<i64>
    %483 = llvm.getelementptr %482[%480] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %484 = llvm.ptrtoint %483 : !llvm.ptr<i64> to i64
    %485 = llvm.mlir.constant(16 : index) : i64
    %486 = llvm.add %484, %485  : i64
    %487 = llvm.call @malloc(%486) : (i64) -> !llvm.ptr<i8>
    %488 = llvm.bitcast %487 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %489 = llvm.ptrtoint %488 : !llvm.ptr<i64> to i64
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.sub %485, %490  : i64
    %492 = llvm.add %489, %491  : i64
    %493 = llvm.urem %492, %485  : i64
    %494 = llvm.sub %492, %493  : i64
    %495 = llvm.inttoptr %494 : i64 to !llvm.ptr<i64>
    %496 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %497 = llvm.insertvalue %488, %496[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %498 = llvm.insertvalue %495, %497[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.insertvalue %499, %498[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %501 = llvm.insertvalue %480, %500[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %502 = llvm.insertvalue %481, %501[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %503 = llvm.mlir.constant(0 : index) : i64
    %504 = llvm.mlir.constant(4 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%503 : i64)
  ^bb73(%506: i64):  // 2 preds: ^bb72, ^bb74
    %507 = llvm.icmp "slt" %506, %504 : i64
    llvm.cond_br %507, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %508 = llvm.extractvalue %464[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %509 = llvm.getelementptr %508[%506] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %510 = llvm.load %509 : !llvm.ptr<i1>
    %511 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %512 = llvm.getelementptr %511[%506] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %513 = llvm.load %512 : !llvm.ptr<i64>
    %514 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.getelementptr %514[%506] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %516 = llvm.load %515 : !llvm.ptr<i64>
    %517 = llvm.select %510, %513, %516 : i1, i64
    %518 = llvm.extractvalue %502[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %519 = llvm.getelementptr %518[%506] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %517, %519 : !llvm.ptr<i64>
    %520 = llvm.add %506, %505  : i64
    llvm.br ^bb73(%520 : i64)
  ^bb75:  // pred: ^bb73
    %521 = llvm.mlir.constant(1 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.mlir.constant(2 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.mlir.constant(2 : index) : i64
    %527 = llvm.mlir.constant(2 : index) : i64
    %528 = llvm.mlir.constant(2 : index) : i64
    %529 = llvm.mlir.null : !llvm.ptr<i64>
    %530 = llvm.getelementptr %529[%528] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %531 = llvm.ptrtoint %530 : !llvm.ptr<i64> to i64
    %532 = llvm.mlir.constant(16 : index) : i64
    %533 = llvm.add %531, %532  : i64
    %534 = llvm.call @malloc(%533) : (i64) -> !llvm.ptr<i8>
    %535 = llvm.bitcast %534 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %536 = llvm.ptrtoint %535 : !llvm.ptr<i64> to i64
    %537 = llvm.mlir.constant(1 : index) : i64
    %538 = llvm.sub %532, %537  : i64
    %539 = llvm.add %536, %538  : i64
    %540 = llvm.urem %539, %532  : i64
    %541 = llvm.sub %539, %540  : i64
    %542 = llvm.inttoptr %541 : i64 to !llvm.ptr<i64>
    %543 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %544 = llvm.insertvalue %535, %543[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.insertvalue %542, %544[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.mlir.constant(0 : index) : i64
    %547 = llvm.insertvalue %546, %545[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.insertvalue %521, %547[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.insertvalue %522, %548[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %550 = llvm.insertvalue %523, %549[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %551 = llvm.insertvalue %524, %550[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %552 = llvm.insertvalue %527, %551[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %553 = llvm.insertvalue %526, %552[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %554 = llvm.insertvalue %524, %553[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %555 = llvm.insertvalue %525, %554[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %556 = llvm.mlir.constant(0 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%556 : i64)
  ^bb76(%559: i64):  // 2 preds: ^bb75, ^bb86
    %560 = llvm.icmp "slt" %559, %557 : i64
    llvm.cond_br %560, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%561 : i64)
  ^bb78(%564: i64):  // 2 preds: ^bb77, ^bb85
    %565 = llvm.icmp "slt" %564, %562 : i64
    llvm.cond_br %565, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %566 = llvm.mlir.constant(0 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    %568 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%566 : i64)
  ^bb80(%569: i64):  // 2 preds: ^bb79, ^bb84
    %570 = llvm.icmp "slt" %569, %567 : i64
    llvm.cond_br %570, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %571 = llvm.mlir.constant(0 : index) : i64
    %572 = llvm.mlir.constant(2 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%571 : i64)
  ^bb82(%574: i64):  // 2 preds: ^bb81, ^bb83
    %575 = llvm.icmp "slt" %574, %572 : i64
    llvm.cond_br %575, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %576 = llvm.extractvalue %309[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %577 = llvm.mlir.constant(2 : index) : i64
    %578 = llvm.mul %15, %577  : i64
    %579 = llvm.mlir.constant(2 : index) : i64
    %580 = llvm.mul %15, %579  : i64
    %581 = llvm.add %578, %580  : i64
    %582 = llvm.add %581, %574  : i64
    %583 = llvm.getelementptr %576[%582] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %584 = llvm.load %583 : !llvm.ptr<i64>
    %585 = llvm.extractvalue %555[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.mlir.constant(2 : index) : i64
    %587 = llvm.mul %559, %586  : i64
    %588 = llvm.mlir.constant(2 : index) : i64
    %589 = llvm.mul %564, %588  : i64
    %590 = llvm.add %587, %589  : i64
    %591 = llvm.mlir.constant(2 : index) : i64
    %592 = llvm.mul %569, %591  : i64
    %593 = llvm.add %590, %592  : i64
    %594 = llvm.add %593, %574  : i64
    %595 = llvm.getelementptr %585[%594] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %584, %595 : !llvm.ptr<i64>
    %596 = llvm.add %574, %573  : i64
    llvm.br ^bb82(%596 : i64)
  ^bb84:  // pred: ^bb82
    %597 = llvm.add %569, %568  : i64
    llvm.br ^bb80(%597 : i64)
  ^bb85:  // pred: ^bb80
    %598 = llvm.add %564, %563  : i64
    llvm.br ^bb78(%598 : i64)
  ^bb86:  // pred: ^bb78
    %599 = llvm.add %559, %558  : i64
    llvm.br ^bb76(%599 : i64)
  ^bb87:  // pred: ^bb76
    %600 = llvm.mlir.constant(1 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    %603 = llvm.mlir.constant(1 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    %605 = llvm.mlir.null : !llvm.ptr<i1>
    %606 = llvm.getelementptr %605[%600] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %607 = llvm.ptrtoint %606 : !llvm.ptr<i1> to i64
    %608 = llvm.mlir.constant(16 : index) : i64
    %609 = llvm.add %607, %608  : i64
    %610 = llvm.call @malloc(%609) : (i64) -> !llvm.ptr<i8>
    %611 = llvm.bitcast %610 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %612 = llvm.ptrtoint %611 : !llvm.ptr<i1> to i64
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.sub %608, %613  : i64
    %615 = llvm.add %612, %614  : i64
    %616 = llvm.urem %615, %608  : i64
    %617 = llvm.sub %615, %616  : i64
    %618 = llvm.inttoptr %617 : i64 to !llvm.ptr<i1>
    %619 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %620 = llvm.insertvalue %611, %619[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %621 = llvm.insertvalue %618, %620[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %622 = llvm.mlir.constant(0 : index) : i64
    %623 = llvm.insertvalue %622, %621[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %624 = llvm.insertvalue %600, %623[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %625 = llvm.insertvalue %601, %624[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %626 = llvm.insertvalue %602, %625[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %627 = llvm.insertvalue %603, %626[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.insertvalue %601, %627[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %629 = llvm.insertvalue %602, %628[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %630 = llvm.insertvalue %603, %629[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.insertvalue %604, %630[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %632 = llvm.mlir.constant(0 : index) : i64
    %633 = llvm.mlir.constant(1 : index) : i64
    %634 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%632 : i64)
  ^bb88(%635: i64):  // 2 preds: ^bb87, ^bb98
    %636 = llvm.icmp "slt" %635, %633 : i64
    llvm.cond_br %636, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %637 = llvm.mlir.constant(0 : index) : i64
    %638 = llvm.mlir.constant(1 : index) : i64
    %639 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%637 : i64)
  ^bb90(%640: i64):  // 2 preds: ^bb89, ^bb97
    %641 = llvm.icmp "slt" %640, %638 : i64
    llvm.cond_br %641, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %642 = llvm.mlir.constant(0 : index) : i64
    %643 = llvm.mlir.constant(1 : index) : i64
    %644 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%642 : i64)
  ^bb92(%645: i64):  // 2 preds: ^bb91, ^bb96
    %646 = llvm.icmp "slt" %645, %643 : i64
    llvm.cond_br %646, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %647 = llvm.mlir.constant(0 : index) : i64
    %648 = llvm.mlir.constant(1 : index) : i64
    %649 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%647 : i64)
  ^bb94(%650: i64):  // 2 preds: ^bb93, ^bb95
    %651 = llvm.icmp "slt" %650, %648 : i64
    llvm.cond_br %651, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %652 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %653 = llvm.add %635, %640  : i64
    %654 = llvm.add %653, %645  : i64
    %655 = llvm.add %654, %650  : i64
    %656 = llvm.getelementptr %652[%655] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %657 = llvm.load %656 : !llvm.ptr<i32>
    %658 = llvm.icmp "ne" %657, %12 : i32
    %659 = llvm.extractvalue %631[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %660 = llvm.add %635, %640  : i64
    %661 = llvm.add %660, %645  : i64
    %662 = llvm.add %661, %650  : i64
    %663 = llvm.getelementptr %659[%662] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %658, %663 : !llvm.ptr<i1>
    %664 = llvm.add %650, %649  : i64
    llvm.br ^bb94(%664 : i64)
  ^bb96:  // pred: ^bb94
    %665 = llvm.add %645, %644  : i64
    llvm.br ^bb92(%665 : i64)
  ^bb97:  // pred: ^bb92
    %666 = llvm.add %640, %639  : i64
    llvm.br ^bb90(%666 : i64)
  ^bb98:  // pred: ^bb90
    %667 = llvm.add %635, %634  : i64
    llvm.br ^bb88(%667 : i64)
  ^bb99:  // pred: ^bb88
    %668 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %669 = llvm.insertvalue %76, %668[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %670 = llvm.insertvalue %555, %669[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %671 = llvm.insertvalue %631, %670[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %671 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v5_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(4 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(3 : i64) : i64
    %142 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %124[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %125[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(2 : i64) : i64
    %147 = llvm.getelementptr %51[%146] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %147 : !llvm.ptr<ptr<i8>>
    %148 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %148 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<210 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<210 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

