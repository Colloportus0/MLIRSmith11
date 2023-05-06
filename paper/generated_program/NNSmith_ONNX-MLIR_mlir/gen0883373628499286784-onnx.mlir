module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<18> : tensor<1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x i32>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(2147483647 : i32) : i32
    %15 = llvm.mlir.constant(0 : i32) : i32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<2 x i32>>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<1 x array<2 x i32>>> to !llvm.ptr<i32>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.mlir.constant(2 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.constant(2 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.mlir.constant(2 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.constant(2 : index) : i64
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.mlir.constant(2 : index) : i64
    %41 = llvm.mlir.constant(2 : index) : i64
    %42 = llvm.mlir.null : !llvm.ptr<i32>
    %43 = llvm.getelementptr %42[%41] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %44 = llvm.ptrtoint %43 : !llvm.ptr<i32> to i64
    %45 = llvm.mlir.constant(16 : index) : i64
    %46 = llvm.add %44, %45  : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %49 = llvm.ptrtoint %48 : !llvm.ptr<i32> to i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.sub %45, %50  : i64
    %52 = llvm.add %49, %51  : i64
    %53 = llvm.urem %52, %45  : i64
    %54 = llvm.sub %52, %53  : i64
    %55 = llvm.inttoptr %54 : i64 to !llvm.ptr<i32>
    %56 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %57 = llvm.insertvalue %48, %56[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.insertvalue %59, %58[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.insertvalue %32, %60[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.insertvalue %33, %61[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.insertvalue %34, %62[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.insertvalue %35, %63[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.insertvalue %36, %64[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.insertvalue %40, %65[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.insertvalue %39, %66[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.insertvalue %38, %67[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %69 = llvm.insertvalue %36, %68[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.insertvalue %37, %69[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%71 : i64)
  ^bb1(%74: i64):  // 2 preds: ^bb0, ^bb14
    %75 = llvm.icmp "slt" %74, %72 : i64
    llvm.cond_br %75, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%76 : i64)
  ^bb3(%79: i64):  // 2 preds: ^bb2, ^bb13
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%81 : i64)
  ^bb5(%84: i64):  // 2 preds: ^bb4, ^bb12
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%86 : i64)
  ^bb7(%89: i64):  // 2 preds: ^bb6, ^bb11
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(2 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%91 : i64)
  ^bb9(%94: i64):  // 2 preds: ^bb8, ^bb10
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %96 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %97 = llvm.add %74, %79  : i64
    %98 = llvm.add %97, %84  : i64
    %99 = llvm.add %98, %89  : i64
    %100 = llvm.add %99, %16  : i64
    %101 = llvm.getelementptr %96[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.load %101 : !llvm.ptr<i32>
    %103 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.mlir.constant(2 : index) : i64
    %105 = llvm.mul %89, %104  : i64
    %106 = llvm.add %105, %94  : i64
    %107 = llvm.getelementptr %103[%106] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %108 = llvm.load %107 : !llvm.ptr<i32>
    %109 = llvm.icmp "sgt" %102, %108 : i32
    %110 = llvm.select %109, %102, %108 : i1, i32
    %111 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mul %74, %112  : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mul %79, %114  : i64
    %116 = llvm.add %113, %115  : i64
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mul %84, %117  : i64
    %119 = llvm.add %116, %118  : i64
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mul %89, %120  : i64
    %122 = llvm.add %119, %121  : i64
    %123 = llvm.add %122, %94  : i64
    %124 = llvm.getelementptr %111[%123] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %110, %124 : !llvm.ptr<i32>
    %125 = llvm.add %94, %93  : i64
    llvm.br ^bb9(%125 : i64)
  ^bb11:  // pred: ^bb9
    %126 = llvm.add %89, %88  : i64
    llvm.br ^bb7(%126 : i64)
  ^bb12:  // pred: ^bb7
    %127 = llvm.add %84, %83  : i64
    llvm.br ^bb5(%127 : i64)
  ^bb13:  // pred: ^bb5
    %128 = llvm.add %79, %78  : i64
    llvm.br ^bb3(%128 : i64)
  ^bb14:  // pred: ^bb3
    %129 = llvm.add %74, %73  : i64
    llvm.br ^bb1(%129 : i64)
  ^bb15:  // pred: ^bb1
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mlir.null : !llvm.ptr<f64>
    %141 = llvm.getelementptr %140[%139] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %142 = llvm.ptrtoint %141 : !llvm.ptr<f64> to i64
    %143 = llvm.mlir.constant(16 : index) : i64
    %144 = llvm.add %142, %143  : i64
    %145 = llvm.call @malloc(%144) : (i64) -> !llvm.ptr<i8>
    %146 = llvm.bitcast %145 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %147 = llvm.ptrtoint %146 : !llvm.ptr<f64> to i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.sub %143, %148  : i64
    %150 = llvm.add %147, %149  : i64
    %151 = llvm.urem %150, %143  : i64
    %152 = llvm.sub %150, %151  : i64
    %153 = llvm.inttoptr %152 : i64 to !llvm.ptr<f64>
    %154 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>
    %155 = llvm.insertvalue %146, %154[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %156 = llvm.insertvalue %153, %155[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.insertvalue %157, %156[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %159 = llvm.insertvalue %130, %158[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %160 = llvm.insertvalue %131, %159[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %161 = llvm.insertvalue %132, %160[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %162 = llvm.insertvalue %133, %161[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %163 = llvm.insertvalue %134, %162[3, 4] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %164 = llvm.insertvalue %138, %163[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %165 = llvm.insertvalue %137, %164[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %166 = llvm.insertvalue %136, %165[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %167 = llvm.insertvalue %134, %166[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %168 = llvm.insertvalue %135, %167[4, 4] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%169 : i64)
  ^bb16(%172: i64):  // 2 preds: ^bb15, ^bb29
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb17, ^bb30
  ^bb17:  // pred: ^bb16
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%174 : i64)
  ^bb18(%177: i64):  // 2 preds: ^bb17, ^bb28
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb19, ^bb29
  ^bb19:  // pred: ^bb18
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%179 : i64)
  ^bb20(%182: i64):  // 2 preds: ^bb19, ^bb27
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb21, ^bb28
  ^bb21:  // pred: ^bb20
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%184 : i64)
  ^bb22(%187: i64):  // 2 preds: ^bb21, ^bb26
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    %189 = llvm.mlir.constant(0 : index) : i64
    %190 = llvm.mlir.constant(2 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%189 : i64)
  ^bb24(%192: i64):  // 2 preds: ^bb23, ^bb25
    %193 = llvm.icmp "slt" %192, %190 : i64
    llvm.cond_br %193, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %194 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %195 = llvm.mlir.constant(2 : index) : i64
    %196 = llvm.mul %172, %195  : i64
    %197 = llvm.mlir.constant(2 : index) : i64
    %198 = llvm.mul %177, %197  : i64
    %199 = llvm.add %196, %198  : i64
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mul %182, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mul %187, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.add %205, %192  : i64
    %207 = llvm.getelementptr %194[%206] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %208 = llvm.load %207 : !llvm.ptr<i32>
    %209 = llvm.sitofp %208 : i32 to f64
    %210 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mul %172, %211  : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mul %177, %213  : i64
    %215 = llvm.add %212, %214  : i64
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mul %182, %216  : i64
    %218 = llvm.add %215, %217  : i64
    %219 = llvm.mlir.constant(2 : index) : i64
    %220 = llvm.mul %187, %219  : i64
    %221 = llvm.add %218, %220  : i64
    %222 = llvm.add %221, %192  : i64
    %223 = llvm.getelementptr %210[%222] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %209, %223 : !llvm.ptr<f64>
    %224 = llvm.add %192, %191  : i64
    llvm.br ^bb24(%224 : i64)
  ^bb26:  // pred: ^bb24
    %225 = llvm.add %187, %186  : i64
    llvm.br ^bb22(%225 : i64)
  ^bb27:  // pred: ^bb22
    %226 = llvm.add %182, %181  : i64
    llvm.br ^bb20(%226 : i64)
  ^bb28:  // pred: ^bb20
    %227 = llvm.add %177, %176  : i64
    llvm.br ^bb18(%227 : i64)
  ^bb29:  // pred: ^bb18
    %228 = llvm.add %172, %171  : i64
    llvm.br ^bb16(%228 : i64)
  ^bb30:  // pred: ^bb16
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mlir.constant(2 : index) : i64
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mlir.null : !llvm.ptr<i1>
    %240 = llvm.getelementptr %239[%238] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %241 = llvm.ptrtoint %240 : !llvm.ptr<i1> to i64
    %242 = llvm.mlir.constant(16 : index) : i64
    %243 = llvm.add %241, %242  : i64
    %244 = llvm.call @malloc(%243) : (i64) -> !llvm.ptr<i8>
    %245 = llvm.bitcast %244 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %246 = llvm.ptrtoint %245 : !llvm.ptr<i1> to i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.sub %242, %247  : i64
    %249 = llvm.add %246, %248  : i64
    %250 = llvm.urem %249, %242  : i64
    %251 = llvm.sub %249, %250  : i64
    %252 = llvm.inttoptr %251 : i64 to !llvm.ptr<i1>
    %253 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>
    %254 = llvm.insertvalue %245, %253[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %255 = llvm.insertvalue %252, %254[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.insertvalue %256, %255[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %258 = llvm.insertvalue %229, %257[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %259 = llvm.insertvalue %230, %258[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %260 = llvm.insertvalue %231, %259[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %261 = llvm.insertvalue %232, %260[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %262 = llvm.insertvalue %233, %261[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %263 = llvm.insertvalue %237, %262[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %264 = llvm.insertvalue %236, %263[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %265 = llvm.insertvalue %235, %264[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %266 = llvm.insertvalue %233, %265[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %267 = llvm.insertvalue %234, %266[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%268 : i64)
  ^bb31(%271: i64):  // 2 preds: ^bb30, ^bb44
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb32, ^bb45
  ^bb32:  // pred: ^bb31
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%273 : i64)
  ^bb33(%276: i64):  // 2 preds: ^bb32, ^bb43
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%278 : i64)
  ^bb35(%281: i64):  // 2 preds: ^bb34, ^bb42
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%283 : i64)
  ^bb37(%286: i64):  // 2 preds: ^bb36, ^bb41
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%288 : i64)
  ^bb39(%291: i64):  // 2 preds: ^bb38, ^bb40
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %293 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mul %271, %294  : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mul %276, %296  : i64
    %298 = llvm.add %295, %297  : i64
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mul %281, %299  : i64
    %301 = llvm.add %298, %300  : i64
    %302 = llvm.mlir.constant(2 : index) : i64
    %303 = llvm.mul %286, %302  : i64
    %304 = llvm.add %301, %303  : i64
    %305 = llvm.add %304, %291  : i64
    %306 = llvm.getelementptr %293[%305] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %307 = llvm.load %306 : !llvm.ptr<i32>
    %308 = llvm.icmp "ne" %307, %15 : i32
    %309 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.mul %271, %310  : i64
    %312 = llvm.mlir.constant(2 : index) : i64
    %313 = llvm.mul %276, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mul %281, %315  : i64
    %317 = llvm.add %314, %316  : i64
    %318 = llvm.mlir.constant(2 : index) : i64
    %319 = llvm.mul %286, %318  : i64
    %320 = llvm.add %317, %319  : i64
    %321 = llvm.add %320, %291  : i64
    %322 = llvm.getelementptr %309[%321] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %308, %322 : !llvm.ptr<i1>
    %323 = llvm.add %291, %290  : i64
    llvm.br ^bb39(%323 : i64)
  ^bb41:  // pred: ^bb39
    %324 = llvm.add %286, %285  : i64
    llvm.br ^bb37(%324 : i64)
  ^bb42:  // pred: ^bb37
    %325 = llvm.add %281, %280  : i64
    llvm.br ^bb35(%325 : i64)
  ^bb43:  // pred: ^bb35
    %326 = llvm.add %276, %275  : i64
    llvm.br ^bb33(%326 : i64)
  ^bb44:  // pred: ^bb33
    %327 = llvm.add %271, %270  : i64
    llvm.br ^bb31(%327 : i64)
  ^bb45:  // pred: ^bb31
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mlir.null : !llvm.ptr<i32>
    %337 = llvm.getelementptr %336[%335] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %338 = llvm.ptrtoint %337 : !llvm.ptr<i32> to i64
    %339 = llvm.mlir.constant(16 : index) : i64
    %340 = llvm.add %338, %339  : i64
    %341 = llvm.call @malloc(%340) : (i64) -> !llvm.ptr<i8>
    %342 = llvm.bitcast %341 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %343 = llvm.ptrtoint %342 : !llvm.ptr<i32> to i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.sub %339, %344  : i64
    %346 = llvm.add %343, %345  : i64
    %347 = llvm.urem %346, %339  : i64
    %348 = llvm.sub %346, %347  : i64
    %349 = llvm.inttoptr %348 : i64 to !llvm.ptr<i32>
    %350 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %351 = llvm.insertvalue %342, %350[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %349, %351[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.insertvalue %353, %352[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %328, %354[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %329, %355[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %330, %356[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %331, %357[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %334, %358[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %333, %359[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %331, %360[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %332, %361[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%363 : i64)
  ^bb46(%366: i64):  // 2 preds: ^bb45, ^bb56
    %367 = llvm.icmp "slt" %366, %364 : i64
    llvm.cond_br %367, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%368 : i64)
  ^bb48(%371: i64):  // 2 preds: ^bb47, ^bb55
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%373 : i64)
  ^bb50(%376: i64):  // 2 preds: ^bb49, ^bb54
    %377 = llvm.icmp "slt" %376, %374 : i64
    llvm.cond_br %377, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%378 : i64)
  ^bb52(%381: i64):  // 2 preds: ^bb51, ^bb53
    %382 = llvm.icmp "slt" %381, %379 : i64
    llvm.cond_br %382, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %383 = llvm.extractvalue %362[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.mlir.constant(2 : index) : i64
    %385 = llvm.mul %366, %384  : i64
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mul %371, %386  : i64
    %388 = llvm.add %385, %387  : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mul %376, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.add %391, %381  : i64
    %393 = llvm.getelementptr %383[%392] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %14, %393 : !llvm.ptr<i32>
    %394 = llvm.add %381, %380  : i64
    llvm.br ^bb52(%394 : i64)
  ^bb54:  // pred: ^bb52
    %395 = llvm.add %376, %375  : i64
    llvm.br ^bb50(%395 : i64)
  ^bb55:  // pred: ^bb50
    %396 = llvm.add %371, %370  : i64
    llvm.br ^bb48(%396 : i64)
  ^bb56:  // pred: ^bb48
    %397 = llvm.add %366, %365  : i64
    llvm.br ^bb46(%397 : i64)
  ^bb57:  // pred: ^bb46
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%398 : i64)
  ^bb58(%401: i64):  // 2 preds: ^bb57, ^bb71
    %402 = llvm.icmp "slt" %401, %399 : i64
    llvm.cond_br %402, ^bb59, ^bb72
  ^bb59:  // pred: ^bb58
    %403 = llvm.mlir.constant(0 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%403 : i64)
  ^bb60(%406: i64):  // 2 preds: ^bb59, ^bb70
    %407 = llvm.icmp "slt" %406, %404 : i64
    llvm.cond_br %407, ^bb61, ^bb71
  ^bb61:  // pred: ^bb60
    %408 = llvm.mlir.constant(0 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%408 : i64)
  ^bb62(%411: i64):  // 2 preds: ^bb61, ^bb69
    %412 = llvm.icmp "slt" %411, %409 : i64
    llvm.cond_br %412, ^bb63, ^bb70
  ^bb63:  // pred: ^bb62
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%413 : i64)
  ^bb64(%416: i64):  // 2 preds: ^bb63, ^bb68
    %417 = llvm.icmp "slt" %416, %414 : i64
    llvm.cond_br %417, ^bb65, ^bb69
  ^bb65:  // pred: ^bb64
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.mlir.constant(2 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%418 : i64)
  ^bb66(%421: i64):  // 2 preds: ^bb65, ^bb67
    %422 = llvm.icmp "slt" %421, %419 : i64
    llvm.cond_br %422, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    %423 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %424 = llvm.mlir.constant(2 : index) : i64
    %425 = llvm.mul %401, %424  : i64
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mul %406, %426  : i64
    %428 = llvm.add %425, %427  : i64
    %429 = llvm.mlir.constant(2 : index) : i64
    %430 = llvm.mul %411, %429  : i64
    %431 = llvm.add %428, %430  : i64
    %432 = llvm.mlir.constant(2 : index) : i64
    %433 = llvm.mul %416, %432  : i64
    %434 = llvm.add %431, %433  : i64
    %435 = llvm.add %434, %421  : i64
    %436 = llvm.getelementptr %423[%435] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %437 = llvm.load %436 : !llvm.ptr<i32>
    %438 = llvm.extractvalue %362[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mul %406, %439  : i64
    %441 = llvm.mlir.constant(2 : index) : i64
    %442 = llvm.mul %411, %441  : i64
    %443 = llvm.add %440, %442  : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mul %416, %444  : i64
    %446 = llvm.add %443, %445  : i64
    %447 = llvm.add %446, %421  : i64
    %448 = llvm.getelementptr %438[%447] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %449 = llvm.load %448 : !llvm.ptr<i32>
    %450 = llvm.icmp "slt" %449, %437 : i32
    %451 = llvm.select %450, %449, %437 : i1, i32
    %452 = llvm.extractvalue %362[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.mlir.constant(2 : index) : i64
    %454 = llvm.mul %406, %453  : i64
    %455 = llvm.mlir.constant(2 : index) : i64
    %456 = llvm.mul %411, %455  : i64
    %457 = llvm.add %454, %456  : i64
    %458 = llvm.mlir.constant(2 : index) : i64
    %459 = llvm.mul %416, %458  : i64
    %460 = llvm.add %457, %459  : i64
    %461 = llvm.add %460, %421  : i64
    %462 = llvm.getelementptr %452[%461] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %451, %462 : !llvm.ptr<i32>
    %463 = llvm.add %421, %420  : i64
    llvm.br ^bb66(%463 : i64)
  ^bb68:  // pred: ^bb66
    %464 = llvm.add %416, %415  : i64
    llvm.br ^bb64(%464 : i64)
  ^bb69:  // pred: ^bb64
    %465 = llvm.add %411, %410  : i64
    llvm.br ^bb62(%465 : i64)
  ^bb70:  // pred: ^bb62
    %466 = llvm.add %406, %405  : i64
    llvm.br ^bb60(%466 : i64)
  ^bb71:  // pred: ^bb60
    %467 = llvm.add %401, %400  : i64
    llvm.br ^bb58(%467 : i64)
  ^bb72:  // pred: ^bb58
    %468 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %469 = llvm.insertvalue %168, %468[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %470 = llvm.insertvalue %267, %469[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %471 = llvm.insertvalue %362, %470[2] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %471 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.extractvalue %51[2] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %55 = llvm.mlir.constant(3 : i64) : i64
    %56 = llvm.mlir.constant(24 : i64) : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.bitcast %57 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %59 = llvm.mlir.constant(5 : i64) : i64
    %60 = llvm.call @omTensorCreateUntyped(%59) : (i64) -> !llvm.ptr<i8>
    %61 = llvm.mlir.constant(1 : i64) : i64
    %62 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.bitcast %62 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %64 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.bitcast %64 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%60, %61, %63, %65) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %66 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%60, %66) : (!llvm.ptr<i8>, i64) -> ()
    %67 = llvm.call @omTensorGetShape(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.call @omTensorGetStrides(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.mlir.constant(0 : i64) : i64
    %70 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.getelementptr %67[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.getelementptr %68[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(1 : i64) : i64
    %75 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %76 = llvm.getelementptr %67[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.getelementptr %68[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(2 : i64) : i64
    %80 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %81 = llvm.getelementptr %67[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %83 = llvm.getelementptr %68[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(3 : i64) : i64
    %85 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %86 = llvm.getelementptr %67[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %88 = llvm.getelementptr %68[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(4 : i64) : i64
    %90 = llvm.extractvalue %52[3, 4] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %91 = llvm.getelementptr %67[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %52[4, 4] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<5 x i64>, array<5 x i64>)> 
    %93 = llvm.getelementptr %68[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.getelementptr %58[%94] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %60, %95 : !llvm.ptr<ptr<i8>>
    %96 = llvm.mlir.constant(5 : i64) : i64
    %97 = llvm.call @omTensorCreateUntyped(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %100 = llvm.bitcast %99 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %101 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %102 = llvm.bitcast %101 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%97, %98, %100, %102) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %103 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%97, %103) : (!llvm.ptr<i8>, i64) -> ()
    %104 = llvm.call @omTensorGetShape(%97) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %105 = llvm.call @omTensorGetStrides(%97) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %106 = llvm.mlir.constant(0 : i64) : i64
    %107 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %108 = llvm.getelementptr %104[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %110 = llvm.getelementptr %105[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(1 : i64) : i64
    %112 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %113 = llvm.getelementptr %104[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %115 = llvm.getelementptr %105[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(2 : i64) : i64
    %117 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %118 = llvm.getelementptr %104[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %120 = llvm.getelementptr %105[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(3 : i64) : i64
    %122 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %123 = llvm.getelementptr %104[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %125 = llvm.getelementptr %105[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(4 : i64) : i64
    %127 = llvm.extractvalue %53[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %128 = llvm.getelementptr %104[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %53[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %130 = llvm.getelementptr %105[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.getelementptr %58[%131] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %97, %132 : !llvm.ptr<ptr<i8>>
    %133 = llvm.mlir.constant(4 : i64) : i64
    %134 = llvm.call @omTensorCreateUntyped(%133) : (i64) -> !llvm.ptr<i8>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.extractvalue %54[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.bitcast %136 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %138 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.bitcast %138 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%134, %135, %137, %139) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %140 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%134, %140) : (!llvm.ptr<i8>, i64) -> ()
    %141 = llvm.call @omTensorGetShape(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %142 = llvm.call @omTensorGetStrides(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.mlir.constant(0 : i64) : i64
    %144 = llvm.extractvalue %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %141[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %142[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(1 : i64) : i64
    %149 = llvm.extractvalue %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %141[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %54[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %142[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(2 : i64) : i64
    %154 = llvm.extractvalue %54[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %141[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.extractvalue %54[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %142[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.mlir.constant(3 : i64) : i64
    %159 = llvm.extractvalue %54[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.getelementptr %141[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.extractvalue %54[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.getelementptr %142[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %161, %162 : !llvm.ptr<i64>
    %163 = llvm.mlir.constant(2 : i64) : i64
    %164 = llvm.getelementptr %58[%163] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %134, %164 : !llvm.ptr<ptr<i8>>
    %165 = llvm.call @omTensorListCreate(%58, %55, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %165 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<218 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<218 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

